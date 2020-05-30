import React from 'react';
import { render } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
    const { getByText } = render(<App />);
    const linkElement = getByText(/I am a fuckin'g fish pizza/i);
    expect(linkElement).toBeInTheDocument();
});

test('renders learn react link, again just to make sure ', () => {
    const { getByText } = render(<App />);
    const linkElement = getByText(/I am a fuckin'g fish pizza/i);
    expect(linkElement).toBeInTheDocument();
});